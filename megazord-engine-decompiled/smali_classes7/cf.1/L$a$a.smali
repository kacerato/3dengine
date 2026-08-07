.class public final Lcf/L$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/L$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/f;"
    }
.end annotation


# static fields
.field public static final c:J = 0x47d5c91fdd74042eL


# instance fields
.field public final b:Lcf/L$a;


# direct methods
.method public constructor <init>(Lcf/L$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcf/L$a$a;->b:Lcf/L$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcf/L$a$a;->b:Lcf/L$a;

    invoke-virtual {v0}, Lcf/L$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcf/L$a$a;->b:Lcf/L$a;

    invoke-virtual {v0, p1}, Lcf/L$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
