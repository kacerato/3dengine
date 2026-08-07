.class public Lye/F$f$a;
.super Lye/F$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/F$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/F$f;


# direct methods
.method public constructor <init>(Lye/F$f;Lye/F;)V
    .locals 0

    iput-object p1, p0, Lye/F$f$a;->g:Lye/F$f;

    invoke-direct {p0, p1, p2}, Lye/F$f$b;-><init>(Lye/F$f;Lye/F;)V

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

    iget-object v0, p0, Lye/F$f$a;->g:Lye/F$f;

    iget-object v0, v0, Lye/F$f;->c:Lye/F;

    iget-object v0, v0, Lye/F;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
