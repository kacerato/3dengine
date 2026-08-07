.class public final Lwg/K0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/j$c<",
        "Lwg/K0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Lwg/K0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/K0$b;

    invoke-direct {v0}, Lwg/K0$b;-><init>()V

    sput-object v0, Lwg/K0$b;->b:Lwg/K0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
