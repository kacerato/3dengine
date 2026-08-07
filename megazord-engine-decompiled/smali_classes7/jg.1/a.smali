.class public final Ljg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:D
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final c:D
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final d:D
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final e:D
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final f:D
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final g:D
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljg/a;

    invoke-direct {v0}, Ljg/a;-><init>()V

    sput-object v0, Ljg/a;->a:Ljg/a;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Ljg/a;->b:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Ljg/a;->c:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Ljg/a;->d:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sput-wide v2, Ljg/a;->e:D

    const/4 v4, 0x1

    int-to-double v4, v4

    div-double v0, v4, v0

    sput-wide v0, Ljg/a;->f:D

    div-double/2addr v4, v2

    sput-wide v4, Ljg/a;->g:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
