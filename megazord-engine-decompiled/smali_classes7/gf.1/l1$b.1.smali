.class public final Lgf/l1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lgf/l1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/l1$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lgf/l1;


# direct methods
.method public constructor <init>(Lgf/l1;Lgf/l1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/l1$a<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/l1$b;->c:Lgf/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/l1$b;->b:Lgf/l1$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lgf/l1$b;->c:Lgf/l1;

    iget-object v0, v0, Lgf/a;->b:LTe/G;

    iget-object v1, p0, Lgf/l1$b;->b:Lgf/l1$a;

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
