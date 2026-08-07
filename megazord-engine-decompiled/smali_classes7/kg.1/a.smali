.class public final Lkg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/a;

    invoke-direct {v0}, Lkg/a;-><init>()V

    sput-object v0, Lkg/a;->a:Lkg/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkg/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkg/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkg/b;

    invoke-direct {v0}, Lkg/b;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Leg/q;)Lkg/f;
    .locals 1
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Leg/q<",
            "-",
            "Log/n<",
            "*>;-TT;-TT;",
            "LFf/P0;",
            ">;)",
            "Lkg/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkg/a$a;

    invoke-direct {v0, p1, p2}, Lkg/a$a;-><init>(Ljava/lang/Object;Leg/q;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Leg/q;)Lkg/f;
    .locals 1
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Leg/q<",
            "-",
            "Log/n<",
            "*>;-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkg/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkg/a$b;

    invoke-direct {v0, p1, p2}, Lkg/a$b;-><init>(Ljava/lang/Object;Leg/q;)V

    return-object v0
.end method
