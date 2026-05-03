from pyswip import Prolog
import os

_prolog = None


def _load_base(prolog):
    current_dir = os.path.dirname(os.path.abspath(__file__))
    path = os.path.join(current_dir, "knowledge", "baseBloonsTD6.pl")
    prolog.consult(path)


def get_prolog():
    global _prolog

    if _prolog is None:
        _prolog = Prolog()
        _load_base(_prolog)

    return _prolog


def reset_prolog():
    global _prolog
    _prolog = None
