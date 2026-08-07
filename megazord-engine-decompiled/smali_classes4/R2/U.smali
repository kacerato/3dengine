.class public abstract LR2/U;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation


# static fields
.field public static final a:LR2/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR2/U$a;

    invoke-direct {v0}, LR2/U$a;-><init>()V

    sput-object v0, LR2/U;->a:LR2/U;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LR2/U;
    .locals 1

    sget-object v0, LR2/U;->a:LR2/U;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
