.class public Lye/O$f$a;
.super Lye/O$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/O$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/O$f;


# direct methods
.method public constructor <init>(Lye/O$f;Lye/O;)V
    .locals 0

    iput-object p1, p0, Lye/O$f$a;->g:Lye/O$f;

    invoke-direct {p0, p1, p2}, Lye/O$f$b;-><init>(Lye/O$f;Lye/O;)V

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lye/O$f$a;->g:Lye/O$f;

    iget-object v0, v0, Lye/O$f;->c:Lye/O;

    iget-object v0, v0, Lye/O;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
