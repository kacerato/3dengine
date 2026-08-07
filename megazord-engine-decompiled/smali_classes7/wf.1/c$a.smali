.class public Lwf/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lwf/c$b;

.field public b:[Lwf/c$a;

.field public c:Z

.field public final synthetic d:Lwf/c;


# direct methods
.method public constructor <init>(Lwf/c;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lwf/c$a;->d:Lwf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lwf/c$b;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lwf/c$b;-><init>(Lwf/c;IIII)V

    iput-object v6, p0, Lwf/c$a;->a:Lwf/c$b;

    const/4 p1, 0x2

    new-array p1, p1, [Lwf/c$a;

    iput-object p1, p0, Lwf/c$a;->b:[Lwf/c$a;

    const/4 p2, 0x0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    const/4 p4, 0x1

    aput-object p3, p1, p4

    iput-boolean p2, p0, Lwf/c$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/texture/Image;)Lwf/c$a;
    .locals 10

    invoke-virtual {p0}, Lwf/c$a;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lwf/c$a;->a(Lcom/jme3/texture/Image;)Lwf/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lwf/c$a;->a(Lcom/jme3/texture/Image;)Lwf/c$a;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v0, p0, Lwf/c$a;->c:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    iget-object v4, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v4}, Lwf/c$b;->e()I

    move-result v4

    if-gt v0, v4, :cond_6

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v0

    iget-object v4, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v4}, Lwf/c$b;->c()I

    move-result v4

    if-le v0, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->e()I

    move-result v3

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v0

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->c()I

    move-result v3

    if-ne v0, v3, :cond_4

    iput-boolean v1, p0, Lwf/c$a;->c:Z

    return-object p0

    :cond_4
    iget-object v0, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v0}, Lwf/c$b;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    new-instance v9, Lwf/c$a;

    iget-object v4, p0, Lwf/c$a;->d:Lwf/c;

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->f()I

    move-result v5

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->g()I

    move-result v6

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v7

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->c()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lwf/c$a;-><init>(Lwf/c;IIII)V

    aput-object v9, v0, v2

    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    new-instance v9, Lwf/c$a;

    iget-object v4, p0, Lwf/c$a;->d:Lwf/c;

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->g()I

    move-result v6

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->e()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->c()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lwf/c$a;-><init>(Lwf/c;IIII)V

    aput-object v9, v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    new-instance v9, Lwf/c$a;

    iget-object v4, p0, Lwf/c$a;->d:Lwf/c;

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->f()I

    move-result v5

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->g()I

    move-result v6

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->e()I

    move-result v7

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lwf/c$a;-><init>(Lwf/c;IIII)V

    aput-object v9, v0, v2

    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    new-instance v9, Lwf/c$a;

    iget-object v4, p0, Lwf/c$a;->d:Lwf/c;

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->f()I

    move-result v5

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->g()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->e()I

    move-result v7

    iget-object v3, p0, Lwf/c$a;->a:Lwf/c$b;

    invoke-virtual {v3}, Lwf/c$b;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v8

    sub-int v8, v3, v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lwf/c$a;-><init>(Lwf/c;IIII)V

    aput-object v9, v0, v1

    :goto_0
    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lwf/c$a;->a(Lcom/jme3/texture/Image;)Lwf/c$a;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v3
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lwf/c$a;->b:[Lwf/c$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
