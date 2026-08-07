.class public final Ldf/e1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/e1$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXe/g<",
        "LVe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Llf/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llf/v<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Ldf/e1$e;


# direct methods
.method public constructor <init>(Ldf/e1$e;Llf/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llf/v<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ldf/e1$e$a;->c:Ldf/e1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldf/e1$e$a;->b:Llf/v;

    return-void
.end method


# virtual methods
.method public a(LVe/c;)V
    .locals 1

    iget-object v0, p0, Ldf/e1$e$a;->b:Llf/v;

    invoke-virtual {v0, p1}, Llf/v;->b(LVe/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LVe/c;

    invoke-virtual {p0, p1}, Ldf/e1$e$a;->a(LVe/c;)V

    return-void
.end method
