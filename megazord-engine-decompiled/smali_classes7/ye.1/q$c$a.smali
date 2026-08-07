.class public final Lye/q$c$a;
.super Lse/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic g:Lye/q$c;


# direct methods
.method public constructor <init>(Lye/q$c;Lye/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/q$c$a;->g:Lye/q$c;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lye/q$c$a;->l(I)Lye/q$b;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lye/q$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lye/q<",
            "TK;TV;>.b;"
        }
    .end annotation

    new-instance v0, Lye/q$b;

    iget-object v1, p0, Lye/q$c$a;->g:Lye/q$c;

    iget-object v1, v1, Lye/q$c;->c:Lye/q;

    iget-object v2, v1, Loe/b0;->l:[Ljava/lang/Object;

    aget-object v2, v2, p1

    iget-object v3, v1, Lye/q;->s:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {v0, v1, v2, v3, p1}, Lye/q$b;-><init>(Lye/q;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
