.class public abstract Lz0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/e$a;
    }
.end annotation


# static fields
.field public static final a:J = 0xa00000L

.field public static final b:I = 0xc8

.field public static final c:I = 0x2710

.field public static final d:J = 0x240c8400L

.field public static final e:I = 0x14000

.field public static final f:Lz0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lz0/e;->a()Lz0/e$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lz0/e$a;->f(J)Lz0/e$a;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lz0/e$a;->d(I)Lz0/e$a;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lz0/e$a;->b(I)Lz0/e$a;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lz0/e$a;->c(J)Lz0/e$a;

    move-result-object v0

    const v1, 0x14000

    invoke-virtual {v0, v1}, Lz0/e$a;->e(I)Lz0/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lz0/e$a;->a()Lz0/e;

    move-result-object v0

    sput-object v0, Lz0/e;->f:Lz0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lz0/e$a;
    .locals 1

    new-instance v0, Lz0/a$b;

    invoke-direct {v0}, Lz0/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()J
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()J
.end method

.method public g()Lz0/e$a;
    .locals 3

    invoke-static {}, Lz0/e;->a()Lz0/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0/e;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz0/e$a;->f(J)Lz0/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lz0/e$a;->d(I)Lz0/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lz0/e$a;->b(I)Lz0/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0/e;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz0/e$a;->c(J)Lz0/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lz0/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lz0/e$a;->e(I)Lz0/e$a;

    move-result-object v0

    return-object v0
.end method
