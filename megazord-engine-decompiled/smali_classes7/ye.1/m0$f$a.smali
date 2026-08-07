.class public Lye/m0$f$a;
.super Lye/m0$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/m0$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/m0$f;


# direct methods
.method public constructor <init>(Lye/m0$f;Lye/m0;)V
    .locals 0

    iput-object p1, p0, Lye/m0$f$a;->g:Lye/m0$f;

    invoke-direct {p0, p1, p2}, Lye/m0$f$b;-><init>(Lye/m0$f;Lye/m0;)V

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

    iget-object v0, p0, Lye/m0$f$a;->g:Lye/m0$f;

    iget-object v0, v0, Lye/m0$f;->c:Lye/m0;

    iget-object v0, v0, Lye/m0;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
