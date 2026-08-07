.class public final Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/b$a;
    }
.end annotation


# static fields
.field public static final b:Lu0/b;


# instance fields
.field public final a:Lu0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/b$a;

    invoke-direct {v0}, Lu0/b$a;-><init>()V

    invoke-virtual {v0}, Lu0/b$a;->a()Lu0/b;

    move-result-object v0

    sput-object v0, Lu0/b;->b:Lu0/b;

    return-void
.end method

.method public constructor <init>(Lu0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/b;->a:Lu0/e;

    return-void
.end method

.method public static a()Lu0/b;
    .locals 1

    sget-object v0, Lu0/b;->b:Lu0/b;

    return-object v0
.end method

.method public static d()Lu0/b$a;
    .locals 1

    new-instance v0, Lu0/b$a;

    invoke-direct {v0}, Lu0/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lu0/e;
    .locals 1
    .annotation runtime Lt3/a$b;
    .end annotation

    iget-object v0, p0, Lu0/b;->a:Lu0/e;

    if-nez v0, :cond_0

    invoke-static {}, Lu0/e;->b()Lu0/e;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()Lu0/e;
    .locals 1
    .annotation runtime Lt3/a$a;
        name = "storageMetrics"
    .end annotation

    .annotation build Lw3/d;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lu0/b;->a:Lu0/e;

    return-object v0
.end method
