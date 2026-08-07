.class public final synthetic Lid/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lid/n;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lid/p;


# direct methods
.method public synthetic constructor <init>(Lid/n;ILjava/util/List;Lid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/d;->a:Lid/n;

    iput p2, p0, Lid/d;->b:I

    iput-object p3, p0, Lid/d;->c:Ljava/util/List;

    iput-object p4, p0, Lid/d;->d:Lid/p;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lid/d;->a:Lid/n;

    iget v1, p0, Lid/d;->b:I

    iget-object v2, p0, Lid/d;->c:Ljava/util/List;

    iget-object v3, p0, Lid/d;->d:Lid/p;

    invoke-static {v0, v1, v2, v3, p1}, Lid/n;->k(Lid/n;ILjava/util/List;Lid/p;I)V

    return-void
.end method
