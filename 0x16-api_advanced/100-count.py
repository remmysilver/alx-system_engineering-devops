#!/usr/bin/python3
"""Function to recursively GET the count of the specified words occuring
in the titles of the hot posts from a give subreddit"""
from requests import get


def count_words(subreddit, word_list, word_counts={}, after=None):
    """Recursively GET all the count of words from `word_list` occurring
    in the hot posts of `subreddit`"""
    word_list = list(set(word_list))
    r = get("https://www.reddit.com/r/{}/hot.json".format(subreddit),
            params={"raw_json": 1,
                    "g": "GLOBAL",
                    "after": after,
                    "limit": 100},
            headers={"User-Agent": "Andrew from Holberton"},
            allow_redirects=False)
    try:
        r.raise_for_status()
    except:
        pass
    else:
        try:
            for word in word_list:
                word_counts.setdefault(word, 0)
            children = r.json().get('data').get('children')
            for c in children:
                for word in word_list:
                    word_counts[word] += sum(map(lambda w: w == word.lower(),
                                                 c.get('data')
                                                 .get('title')
                                                 .lower()
                                                 .split()))
            after = r.json().get('data').get('after')
            if after is None:
                if all(map(lambda w: w[1] == 0, word_counts.items())):
                    print()
                else:
                    for word, count in sorted(word_counts.items(),
                                              key=lambda i: i[1],
                                              reverse=True):
                        if count > 0:
                            print("{}: {}".format(word, count))
            else:
                return count_words(subreddit, word_list,
                                   word_counts=word_counts, after=after)
        except:
            pass
