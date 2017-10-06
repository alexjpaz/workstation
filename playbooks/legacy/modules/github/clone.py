#!/usr/bin/env python
import logging
logging.basicConfig(level=logging.INFO)

import os 
from subprocess import call
from multiprocessing import Pool
from functools import partial

repos = {
    "alexjpaz": [
        "docker-toolbox",
        "liftit",
        "prathu",
        "alexjpaz.com",
        "workstation-code.d"
    ],
    "alexjpaz-playground": [
        "ci-cd-examples",
        "blessedjs",
        "firebase"
    ]
}


class GitRepo():
    def __init__(self, org, repo):
        self.org = org;
        self.repo = repo;


def clone_repo(repo):
    domain = "github.com"
    url = "git@%s:%s/%s.git" % (domain, repo.org, repo.repo)
    path = os.path.expanduser("~/code/%s/%s/%s" % (domain, repo.org, repo.repo))
    if os.path.exists(path):
        logging.info("Already cloned %s/%s" % (repo.org, repo.repo))
        return
    else:
        call(["git", "clone", url, path])


tasks = []

for org_key, org in repos.iteritems():
    for repo in org:
        r = GitRepo(org_key, repo)
        tasks.append(r)

pool = Pool(processes=10)
pool.map(clone_repo, tasks)

