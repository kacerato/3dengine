.class public final Ltf/f$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = 0x679849349531b12L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ltf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;

.field public volatile e:Z


# direct methods
.method public constructor <init>(LTe/I;Ltf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "Ltf/f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ltf/f$c;->b:LTe/I;

    iput-object p2, p0, Ltf/f$c;->c:Ltf/f;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ltf/f$c;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Ltf/f$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf/f$c;->e:Z

    iget-object v0, p0, Ltf/f$c;->c:Ltf/f;

    invoke-virtual {v0, p0}, Ltf/f;->B8(Ltf/f$c;)V

    :cond_0
    return-void
.end method
