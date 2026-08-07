.class public final synthetic Lid/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lid/n;

.field public final synthetic b:Lid/p;

.field public final synthetic c:Lid/o;


# direct methods
.method public synthetic constructor <init>(Lid/n;Lid/p;Lid/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/i;->a:Lid/n;

    iput-object p2, p0, Lid/i;->b:Lid/p;

    iput-object p3, p0, Lid/i;->c:Lid/o;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lid/i;->a:Lid/n;

    iget-object v1, p0, Lid/i;->b:Lid/p;

    iget-object v2, p0, Lid/i;->c:Lid/o;

    invoke-static {v0, v1, v2, p1}, Lid/n;->e(Lid/n;Lid/p;Lid/o;I)V

    return-void
.end method
