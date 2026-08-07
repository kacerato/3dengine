.class public LI4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/d$a;
    }
.end annotation


# static fields
.field public static final d:F = -4.68484672E8f

.field public static final e:F = -4.86484864E8f


# instance fields
.field public a:F

.field public b:F

.field public c:LI4/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x32209bee

    iput v0, p0, LI4/d;->a:F

    iput v0, p0, LI4/d;->b:F

    sget-object v0, LI4/d$a;->Global:LI4/d$a;

    iput-object v0, p0, LI4/d;->c:LI4/d$a;

    return-void
.end method
