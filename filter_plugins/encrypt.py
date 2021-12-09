# -*- coding:utf-8 -*-
import base64
from Crypto.Cipher import AES

class EncryptDate:
    def __init__(self, key,block_size):
        self.key = key
        self.length = AES.block_size
        self.aes = AES.new(self.key, AES.MODE_ECB)

    def pad(self, text):
        count = len(text.encode('utf-8'))
        add = self.length - (count % self.length)
        entext = text + (chr(add) * add)
        return entext

    def encrypt(self, encrData):
        res = self.aes.encrypt(self.pad(encrData).encode("utf8"))
        msg = str(base64.b64encode(res).decode('utf8'))
        return msg

def to_encrypt(text, key, block_size):
    key = str.encode(key).ljust(block_size, b'\0')
    eg = EncryptDate(key, block_size)
    res = eg.encrypt(text)
    return res

class FilterModule(object):
    def filters(self):
        return {
            'encrypt': to_encrypt
        }
