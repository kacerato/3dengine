.class public final Lz0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lz0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/g;

    invoke-direct {v0}, Lz0/g;-><init>()V

    sput-object v0, Lz0/g$a;->a:Lz0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lz0/g;
    .locals 1

    sget-object v0, Lz0/g$a;->a:Lz0/g;

    return-object v0
.end method
