.class public final LEg/d;
.super LEg/k;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:LEg/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LEg/d;

    invoke-direct {v0}, LEg/d;-><init>()V

    sput-object v0, LEg/d;->a:LEg/d;

    new-instance v0, LEg/d$a;

    invoke-direct {v0}, LEg/d$a;-><init>()V

    sput-object v0, LEg/d;->b:LEg/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LEg/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Leg/l;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Leg/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LEg/d;->b:LEg/d$a;

    invoke-static {v0, p1}, LEg/c;->a(LEg/d$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leg/l;

    return-object p1
.end method
