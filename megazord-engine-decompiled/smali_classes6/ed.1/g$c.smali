.class public Led/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Led/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Led/d<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final d:Lze/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze/k0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Led/g$c;->a:[Ljava/lang/Object;

    .line 3
    new-instance v0, Led/g$c$a;

    invoke-direct {v0, p0}, Led/g$c$a;-><init>(Led/g$c;)V

    iput-object v0, p0, Led/g$c;->d:Lze/k0;

    return-void
.end method

.method public synthetic constructor <init>(Led/g$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Led/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Led/g$c;->b:Ljava/lang/Object;

    iget-object v1, p0, Led/g$c;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v0, p0, Led/g$c;->c:Led/d;

    return-void
.end method
