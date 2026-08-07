.class public final synthetic LHf/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/a;


# instance fields
.field public final synthetic b:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHf/v;->b:[J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LHf/v;->b:[J

    invoke-static {v0}, LHf/A;->W4([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
