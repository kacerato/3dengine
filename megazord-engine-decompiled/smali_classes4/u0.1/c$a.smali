.class public final Lu0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Lu0/c$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu0/c$a;->a:J

    sget-object v0, Lu0/c$b;->REASON_UNKNOWN:Lu0/c$b;

    iput-object v0, p0, Lu0/c$a;->b:Lu0/c$b;

    return-void
.end method


# virtual methods
.method public a()Lu0/c;
    .locals 4

    new-instance v0, Lu0/c;

    iget-wide v1, p0, Lu0/c$a;->a:J

    iget-object v3, p0, Lu0/c$a;->b:Lu0/c$b;

    invoke-direct {v0, v1, v2, v3}, Lu0/c;-><init>(JLu0/c$b;)V

    return-object v0
.end method

.method public b(J)Lu0/c$a;
    .locals 0

    iput-wide p1, p0, Lu0/c$a;->a:J

    return-object p0
.end method

.method public c(Lu0/c$b;)Lu0/c$a;
    .locals 0

    iput-object p1, p0, Lu0/c$a;->b:Lu0/c$b;

    return-object p0
.end method
