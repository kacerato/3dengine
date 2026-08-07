.class public Lye/X$f$a;
.super Lye/X$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/X$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/X$f;


# direct methods
.method public constructor <init>(Lye/X$f;Lye/X;)V
    .locals 0

    iput-object p1, p0, Lye/X$f$a;->g:Lye/X$f;

    invoke-direct {p0, p1, p2}, Lye/X$f$b;-><init>(Lye/X$f;Lye/X;)V

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

    iget-object v0, p0, Lye/X$f$a;->g:Lye/X$f;

    iget-object v0, v0, Lye/X$f;->c:Lye/X;

    iget-object v0, v0, Lye/X;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
