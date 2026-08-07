.class public Lye/x$f$a;
.super Lye/x$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/x$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/x$f;


# direct methods
.method public constructor <init>(Lye/x$f;Lye/x;)V
    .locals 0

    iput-object p1, p0, Lye/x$f$a;->g:Lye/x$f;

    invoke-direct {p0, p1, p2}, Lye/x$f$b;-><init>(Lye/x$f;Lye/x;)V

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

    iget-object v0, p0, Lye/x$f$a;->g:Lye/x$f;

    iget-object v0, v0, Lye/x$f;->c:Lye/x;

    iget-object v0, v0, Lye/x;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
