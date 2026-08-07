.class public final Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/e$a;
    }
.end annotation


# static fields
.field public static final c:Lu0/e;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/e$a;

    invoke-direct {v0}, Lu0/e$a;-><init>()V

    invoke-virtual {v0}, Lu0/e$a;->a()Lu0/e;

    move-result-object v0

    sput-object v0, Lu0/e;->c:Lu0/e;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu0/e;->a:J

    iput-wide p3, p0, Lu0/e;->b:J

    return-void
.end method

.method public static b()Lu0/e;
    .locals 1

    sget-object v0, Lu0/e;->c:Lu0/e;

    return-object v0
.end method

.method public static d()Lu0/e$a;
    .locals 1

    new-instance v0, Lu0/e$a;

    invoke-direct {v0}, Lu0/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation build Lw3/d;
        tag = 0x1
    .end annotation

    iget-wide v0, p0, Lu0/e;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 2
    .annotation build Lw3/d;
        tag = 0x2
    .end annotation

    iget-wide v0, p0, Lu0/e;->b:J

    return-wide v0
.end method
