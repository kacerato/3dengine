.class public Lzc/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzc/e$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc/e;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzc/e;


# direct methods
.method public constructor <init>(Lzc/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lzc/e$a;->a:Lzc/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzc/a;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    iget-object p1, p1, Lzc/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public b(Lzc/a;I)Lzc/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "condition",
            "idx"
        }
    .end annotation

    iget-object p1, p1, Lzc/a;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzc/b;

    return-object p1
.end method
