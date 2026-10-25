
extends RefCounted

const CARDS: Array[Dictionary] = [
    {"id":"naruto","name":"Naruto Uzumaki","rarity":"Lendária","power":95,"chakra":90},
    {"id":"sasuke","name":"Sasuke Uchiha","rarity":"Épica","power":88,"chakra":85},
    {"id":"sakura","name":"Sakura Haruno","rarity":"Rara","power":70,"chakra":65},
    {"id":"kakashi","name":"Kakashi Hatake","rarity":"Épica","power":90,"chakra":88},
    {"id":"shikamaru","name":"Shikamaru Nara","rarity":"Comum","power":55,"chakra":60},
    {"id":"hinata","name":"Hinata Hyuga","rarity":"Rara","power":72,"chakra":70},
    {"id":"gaara","name":"Gaara","rarity":"Épica","power":86,"chakra":82},
    {"id":"itachi","name":"Itachi Uchiha","rarity":"Lendária","power":98,"chakra":95}
]

static func get_all_cards() -> Array[Dictionary]:
    return CARDS.duplicate(true)

static func get_card_by_id(card_id: String) -> Dictionary:
    for card in CARDS:
        if card["id"] == card_id:
            return card.duplicate(true)
    return {}

static func get_card_pool_for_rarity(rarity: String) -> Array[Dictionary]:
    var pool: Array[Dictionary] = []
    for card in CARDS:
        if card["rarity"] == rarity:
            pool.append(card.duplicate(true))
    return pool
