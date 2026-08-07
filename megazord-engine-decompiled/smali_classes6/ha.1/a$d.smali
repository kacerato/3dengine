.class public final Lha/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    iput v0, p0, Lha/a$d;->a:I

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    iput v0, p0, Lha/a$d;->b:I

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    iput v0, p0, Lha/a$d;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    iput p1, p0, Lha/a$d;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Lha/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lha/a$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    return-void
.end method

.method public static synthetic a(Lha/a$d;Lha/a$d;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lha/a$d;->b(Lha/a$d;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lha/a$d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lha/a$d;->a:I

    iget v1, p1, Lha/a$d;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lha/a$d;->b:I

    iget v1, p1, Lha/a$d;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lha/a$d;->c:I

    iget v1, p1, Lha/a$d;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lha/a$d;->d:I

    iget p1, p1, Lha/a$d;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
