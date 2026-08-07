.class public final synthetic Lag/z$b;
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
        "Ljava/nio/file/attribute/BasicFileAttributes;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Lag/a;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lag/b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;

.field public final synthetic g:Leg/q;
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


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Leg/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Leg/q<",
            "-",
            "Lag/a;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lag/b;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Leg/q<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lag/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lag/z$b;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lag/z$b;->c:Leg/q;

    iput-object p3, p0, Lag/z$b;->d:Ljava/nio/file/Path;

    iput-object p4, p0, Lag/z$b;->e:Ljava/nio/file/Path;

    iput-object p5, p0, Lag/z$b;->f:Ljava/nio/file/Path;

    iput-object p6, p0, Lag/z$b;->g:Leg/q;

    const-string p5, "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;"

    const/4 p6, 0x0

    const/4 p2, 0x2

    const-class p3, Lkotlin/jvm/internal/M$a;

    const-string p4, "copy"

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 9

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lag/z$b;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lag/z$b;->c:Leg/q;

    iget-object v3, p0, Lag/z$b;->d:Ljava/nio/file/Path;

    iget-object v4, p0, Lag/z$b;->e:Ljava/nio/file/Path;

    iget-object v5, p0, Lag/z$b;->f:Ljava/nio/file/Path;

    iget-object v6, p0, Lag/z$b;->g:Leg/q;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lag/z;->O(Ljava/util/ArrayList;Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Leg/q;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {p0, p1, p2}, Lag/z$b;->d(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
