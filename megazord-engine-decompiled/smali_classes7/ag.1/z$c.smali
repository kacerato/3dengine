.class public final synthetic Lag/z$c;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/z;->T(Ljava/nio/file/Path;Ljava/nio/file/Path;Leg/q;ZLeg/q;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/p<",
        "Ljava/nio/file/Path;",
        "Ljava/lang/Exception;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lag/k;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/nio/file/Path;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/q<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lag/k;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lag/z$c;->b:Leg/q;

    iput-object p2, p0, Lag/z$c;->c:Ljava/nio/file/Path;

    iput-object p3, p0, Lag/z$c;->d:Ljava/nio/file/Path;

    iput-object p4, p0, Lag/z$c;->e:Ljava/nio/file/Path;

    const-string v4, "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Lkotlin/jvm/internal/M$a;

    const-string v3, "error"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .locals 7

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lag/z$c;->b:Leg/q;

    iget-object v2, p0, Lag/z$c;->c:Ljava/nio/file/Path;

    iget-object v3, p0, Lag/z$c;->d:Ljava/nio/file/Path;

    iget-object v4, p0, Lag/z$c;->e:Ljava/nio/file/Path;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lag/z;->P(Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2}, Lag/z$c;->d(Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
