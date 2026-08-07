.class public final synthetic Lid/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lid/n;

.field public final synthetic b:Lid/p;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lid/n;Lid/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/k;->a:Lid/n;

    iput-object p2, p0, Lid/k;->b:Lid/p;

    iput-object p3, p0, Lid/k;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lid/k;->a:Lid/n;

    iget-object v1, p0, Lid/k;->b:Lid/p;

    iget-object v2, p0, Lid/k;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lid/n;->d(Lid/n;Lid/p;Ljava/util/List;I)V

    return-void
.end method
