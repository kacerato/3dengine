.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation runtime LFf/o;
    message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
    replaceWith = .subannotation LFf/g0;
        expression = ""
        imports = {}
    .end subannotation
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo3/g<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Ln3/a;

    const-class v1, Lwg/M;

    invoke-static {v0, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v2

    invoke-static {v2}, Lo3/g;->h(Lo3/F;)Lo3/g$b;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v0, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v0

    invoke-static {v0}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {v0, v2}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/g$b;->d()Lo3/g;

    move-result-object v0

    const-string v2, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Ln3/c;

    invoke-static {v4, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v5

    invoke-static {v5}, Lo3/g;->h(Lo3/F;)Lo3/g$b;

    move-result-object v5

    invoke-static {v4, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v4

    invoke-static {v4}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v4

    invoke-virtual {v5, v4}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v4, v5}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v4

    invoke-virtual {v4}, Lo3/g$b;->d()Lo3/g;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Ln3/b;

    invoke-static {v5, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v6

    invoke-static {v6}, Lo3/g;->h(Lo3/F;)Lo3/g$b;

    move-result-object v6

    invoke-static {v5, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v5

    invoke-static {v5}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v5

    invoke-virtual {v6, v5}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v5, v6}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v5

    invoke-virtual {v5}, Lo3/g$b;->d()Lo3/g;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Ln3/d;

    invoke-static {v6, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v1

    invoke-static {v1}, Lo3/g;->h(Lo3/F;)Lo3/g$b;

    move-result-object v1

    invoke-static {v6, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v3

    invoke-static {v3}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v1, v3}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v1

    invoke-virtual {v1}, Lo3/g$b;->d()Lo3/g;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v4, v5, v1}, [Lo3/g;

    move-result-object v0

    invoke-static {v0}, LHf/H;->Q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
