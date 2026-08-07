.class public Lea/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lea/c;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lea/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Class;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lea/c;Lea/a;Ljava/lang/Class;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "listener",
            "listenerClass",
            "ownerList",
            "indexInOwnerList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea/c;",
            "Lea/a;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lea/d;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea/d;->a:Lea/c;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lea/d;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lea/d;->c:Ljava/lang/Class;

    iput-object p4, p0, Lea/d;->d:Ljava/util/List;

    iput p5, p0, Lea/d;->e:I

    return-void
.end method
