"""Contrato experimental do futuro backend Python da Megazord Engine."""

class MegazordContext:
    def __init__(self, bridge):
        self._bridge = bridge

    def emit(self, name, value=None):
        """Envia evento ao bridge quando o backend Android estiver conectado."""
        if not name or not isinstance(name, str):
            raise ValueError("event name must be a non-empty string")
        return self._bridge.emit_event(name, value)

    def find_object(self, object_id):
        if not object_id:
            return None
        return self._bridge.find_object(object_id)

    def log(self, message):
        return self._bridge.log(str(message))
