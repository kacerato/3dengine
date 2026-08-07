.class public Lye/g$f$a;
.super Lye/g$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/g$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/g$f;


# direct methods
.method public constructor <init>(Lye/g$f;Lye/g;)V
    .locals 0

    iput-object p1, p0, Lye/g$f$a;->g:Lye/g$f;

    invoke-direct {p0, p1, p2}, Lye/g$f$b;-><init>(Lye/g$f;Lye/g;)V

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

    iget-object v0, p0, Lye/g$f$a;->g:Lye/g$f;

    iget-object v0, v0, Lye/g$f;->c:Lye/g;

    iget-object v0, v0, Lye/g;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
