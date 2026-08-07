.class public LEi/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LEi/Q;

.field public b:LEi/B;

.field public c:F

.field public d:J

.field public e:J

.field public f:[F

.field public g:[F

.field public h:LEi/L;

.field public i:I

.field public j:F

.field public k:LEi/M;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, LEi/K;->f:[F

    new-array v0, v0, [F

    iput-object v0, p0, LEi/K;->g:[F

    return-void
.end method
