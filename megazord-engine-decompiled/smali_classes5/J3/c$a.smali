.class public final LJ3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ3/c;->b()Lo3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo3/k;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"
    }
.end annotation


# static fields
.field public static final a:LJ3/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ3/c$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ3/c$a;

    invoke-direct {v0}, LJ3/c$a;-><init>()V

    sput-object v0, LJ3/c$a;->a:LJ3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LJ3/c$a;->b(Lo3/h;)Lwg/M;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo3/h;)Lwg/M;
    .locals 2

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->y(ILjava/lang/String;)V

    const-class v0, Ljava/lang/annotation/Annotation;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v0

    invoke-interface {p1, v0}, Lo3/h;->f(Lo3/F;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lwg/y0;->c(Ljava/util/concurrent/Executor;)Lwg/M;

    move-result-object p1

    return-object p1
.end method
