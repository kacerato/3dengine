.class public Lna/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna/m;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$normalColor",
            "val$pressedColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lna/m$a;->a:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p2, p0, Lna/m$a;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;)",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LW5/b;

    new-instance v1, Lna/m$a$a;

    invoke-direct {v1, p0}, Lna/m$a$a;-><init>(Lna/m$a;)V

    sget-object v2, LW5/b$a;->Color:LW5/b$a;

    const-string v3, "normal"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lna/m$a$b;

    invoke-direct {v1, p0}, Lna/m$a$b;-><init>(Lna/m$a;)V

    const-string v3, "pressed"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
