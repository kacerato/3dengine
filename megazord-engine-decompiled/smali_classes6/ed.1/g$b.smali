.class public Led/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field public final a:[Z

.field public final b:[Z

.field public c:Ljava/lang/Object;

.field public d:Led/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Led/b<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final e:Led/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Led/c<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Lze/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze/k0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Z

    iput-object v1, p0, Led/g$b;->a:[Z

    .line 3
    new-array v0, v0, [Z

    iput-object v0, p0, Led/g$b;->b:[Z

    .line 4
    new-instance v0, Led/g$b$a;

    invoke-direct {v0, p0}, Led/g$b$a;-><init>(Led/g$b;)V

    iput-object v0, p0, Led/g$b;->e:Led/c;

    .line 5
    new-instance v0, Led/g$b$b;

    invoke-direct {v0, p0}, Led/g$b$b;-><init>(Led/g$b;)V

    iput-object v0, p0, Led/g$b;->f:Lze/k0;

    return-void
.end method

.method public synthetic constructor <init>(Led/g$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Led/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Led/g$b;->c:Ljava/lang/Object;

    iget-object v1, p0, Led/g$b;->a:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    iget-object v1, p0, Led/g$b;->b:[Z

    aput-boolean v2, v1, v2

    iput-object v0, p0, Led/g$b;->d:Led/b;

    return-void
.end method
