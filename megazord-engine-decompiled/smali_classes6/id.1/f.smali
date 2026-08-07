.class public final synthetic Lid/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lid/p;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lid/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/f;->a:Lid/p;

    iput-object p2, p0, Lid/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lid/f;->a:Lid/p;

    iget-object v1, p0, Lid/f;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lid/n;->a(Lid/p;Ljava/util/List;I)V

    return-void
.end method
