.class public interface abstract Lwc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "serializableShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract copy()Lwc/l;
.end method

.method public abstract d(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j(Lva/b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract l()V
.end method
