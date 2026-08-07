.class public Llb/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 1

    new-instance v0, Llb/l;

    invoke-direct {v0}, Llb/l;-><init>()V

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;"
        }
    .end annotation

    const-class v0, Llb/l;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Exp"

    return-object v0
.end method

.method public d(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Llb/l;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Math/Advanced"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Exp"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
