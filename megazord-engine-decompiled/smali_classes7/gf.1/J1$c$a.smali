.class public final Lgf/J1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/J1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ltf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lgf/J1$c;


# direct methods
.method public constructor <init>(Lgf/J1$c;Ltf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/j<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/J1$c$a;->c:Lgf/J1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/J1$c$a;->b:Ltf/j;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lgf/J1$c$a;->c:Lgf/J1$c;

    iget-object v1, p0, Lgf/J1$c$a;->b:Ltf/j;

    invoke-virtual {v0, v1}, Lgf/J1$c;->n(Ltf/j;)V

    return-void
.end method
