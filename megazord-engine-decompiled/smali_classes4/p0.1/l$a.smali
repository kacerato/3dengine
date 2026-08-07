.class public final Lp0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lp0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/l;

    invoke-direct {v0}, Lp0/l;-><init>()V

    sput-object v0, Lp0/l$a;->a:Lp0/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lp0/l;
    .locals 1

    sget-object v0, Lp0/l$a;->a:Lp0/l;

    return-object v0
.end method
