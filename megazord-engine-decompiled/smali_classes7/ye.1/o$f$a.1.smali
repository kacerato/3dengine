.class public Lye/o$f$a;
.super Lye/o$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/o$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/o$f;


# direct methods
.method public constructor <init>(Lye/o$f;Lye/o;)V
    .locals 0

    iput-object p1, p0, Lye/o$f$a;->g:Lye/o$f;

    invoke-direct {p0, p1, p2}, Lye/o$f$b;-><init>(Lye/o$f;Lye/o;)V

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

    iget-object v0, p0, Lye/o$f$a;->g:Lye/o$f;

    iget-object v0, v0, Lye/o$f;->c:Lye/o;

    iget-object v0, v0, Lye/o;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
