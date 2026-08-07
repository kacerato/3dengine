.class public Lv8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv8/h$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/List;

.field public c:Lv8/h$a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayList"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv8/h;->a:Ljava/util/ArrayList;

    .line 3
    sget-object p1, Lv8/h$a;->ArrayList:Lv8/h$a;

    iput-object p1, p0, Lv8/h;->c:Lv8/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lv8/h;->b:Ljava/util/List;

    .line 6
    sget-object p1, Lv8/h$a;->List:Lv8/h$a;

    iput-object p1, p0, Lv8/h;->c:Lv8/h$a;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lv8/h;->c:Lv8/h$a;

    sget-object v1, Lv8/h$a;->ArrayList:Lv8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lv8/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lv8/h$a;->List:Lv8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv8/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lv8/h;->c:Lv8/h$a;

    sget-object v1, Lv8/h$a;->ArrayList:Lv8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lv8/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lv8/h$a;->List:Lv8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv8/h;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lv8/h;->c:Lv8/h$a;

    sget-object v1, Lv8/h$a;->ArrayList:Lv8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lv8/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lv8/h$a;->List:Lv8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv8/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
