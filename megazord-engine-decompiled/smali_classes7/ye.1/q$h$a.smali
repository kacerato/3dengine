.class public Lye/q$h$a;
.super Lse/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/q$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/q$h;


# direct methods
.method public constructor <init>(Lye/q$h;Loe/b0;)V
    .locals 0

    iput-object p1, p0, Lye/q$h$a;->g:Lye/q$h;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

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

    iget-object v0, p0, Lye/q$h$a;->g:Lye/q$h;

    iget-object v0, v0, Lye/q$h;->c:Lye/q;

    iget-object v0, v0, Lye/q;->s:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
