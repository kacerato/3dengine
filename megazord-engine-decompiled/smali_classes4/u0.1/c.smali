.class public final Lu0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/c$b;,
        Lu0/c$a;
    }
.end annotation


# static fields
.field public static final c:Lu0/c;


# instance fields
.field public final a:J

.field public final b:Lu0/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/c$a;

    invoke-direct {v0}, Lu0/c$a;-><init>()V

    invoke-virtual {v0}, Lu0/c$a;->a()Lu0/c;

    move-result-object v0

    sput-object v0, Lu0/c;->c:Lu0/c;

    return-void
.end method

.method public constructor <init>(JLu0/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu0/c;->a:J

    iput-object p3, p0, Lu0/c;->b:Lu0/c$b;

    return-void
.end method

.method public static a()Lu0/c;
    .locals 1

    sget-object v0, Lu0/c;->c:Lu0/c;

    return-object v0
.end method

.method public static d()Lu0/c$a;
    .locals 1

    new-instance v0, Lu0/c$a;

    invoke-direct {v0}, Lu0/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()J
    .locals 2
    .annotation build Lw3/d;
        tag = 0x1
    .end annotation

    iget-wide v0, p0, Lu0/c;->a:J

    return-wide v0
.end method

.method public c()Lu0/c$b;
    .locals 1
    .annotation build Lw3/d;
        tag = 0x3
    .end annotation

    iget-object v0, p0, Lu0/c;->b:Lu0/c$b;

    return-object v0
.end method
