.class public final LB0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:LB0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/f;

    invoke-direct {v0}, LB0/f;-><init>()V

    sput-object v0, LB0/f$a;->a:LB0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LB0/f;
    .locals 1

    sget-object v0, LB0/f$a;->a:LB0/f;

    return-object v0
.end method
