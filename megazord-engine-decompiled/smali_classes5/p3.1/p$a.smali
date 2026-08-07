.class public Lp3/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/p;-><init>(Lp3/p$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/p$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp3/p;


# direct methods
.method public constructor <init>(Lp3/p;)V
    .locals 0

    iput-object p1, p0, Lp3/p$a;->a:Lp3/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lp3/p$a;->a:Lp3/p;

    invoke-static {v0, p1}, Lp3/p;->b(Lp3/p;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lp3/p$a;->a:Lp3/p;

    invoke-static {v0, p1}, Lp3/p;->a(Lp3/p;Ljava/lang/Object;)Z

    return-void
.end method
