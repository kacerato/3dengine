.class public Lt9/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt9/b;->b(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Landroid/content/Context;Lorg/luaj/vm2/Globals;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/luaj/vm2/LuaValue;

.field public final synthetic b:Lh9/l;

.field public final synthetic c:Lt9/b$f;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/LuaValue;Lh9/l;Lt9/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$value",
            "val$aClass",
            "val$attribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt9/b$d;->a:Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lt9/b$d;->b:Lh9/l;

    iput-object p3, p0, Lt9/b$d;->c:Lt9/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt9/b$d;->a:Lorg/luaj/vm2/LuaValue;

    iget-object v1, p0, Lt9/b$d;->b:Lh9/l;

    iget-object v1, v1, Lh9/l;->a:Lh9/m;

    invoke-interface {v1}, Lh9/m;->getCls()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lt9/b$d;->c:Lt9/b$f;

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt9/b$f;->e(Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method
