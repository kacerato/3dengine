.class public final Lhf/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkf/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:[LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final b:[LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lhf/o;


# direct methods
.method public constructor <init>(Lhf/o;[LCi/c;[LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TT;>;[",
            "LCi/c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lhf/o$b;->c:Lhf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhf/o$b;->a:[LCi/c;

    iput-object p3, p0, Lhf/o$b;->b:[LCi/c;

    return-void
.end method


# virtual methods
.method public a(ILTe/J$c;)V
    .locals 3

    iget-object v0, p0, Lhf/o$b;->c:Lhf/o;

    iget-object v1, p0, Lhf/o$b;->a:[LCi/c;

    iget-object v2, p0, Lhf/o$b;->b:[LCi/c;

    invoke-virtual {v0, p1, v1, v2, p2}, Lhf/o;->V(I[LCi/c;[LCi/c;LTe/J$c;)V

    return-void
.end method
