.class public final Lib/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Lsa/a;

.field public b:I

.field public c:J

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lib/d$c;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lib/d$c;->c:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 4
    iput v0, p0, Lib/d$c;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lib/d$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lib/d$c;-><init>()V

    return-void
.end method
