from typing import overload

from calibre.utils.resources import get_image_path, get_path

def load_translations() -> None: ...
def _(message: str) -> str: ...
@overload
def get_resources(name: str) -> bytes: ...
@overload
def get_resources(list_of_names: list[str]) -> dict[str, bytes]: ...

I = get_image_path
P = get_path
