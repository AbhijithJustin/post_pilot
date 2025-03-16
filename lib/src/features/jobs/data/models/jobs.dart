class JobsModel {
  JobsModel({
    required this.key,
    required this.startTime,
    required this.endTime,
    required this.state,
    required this.jobPriority,
    required this.specificPriorityValue,
    required this.resourceOverwrites,
    required this.source,
    required this.sourceType,
    required this.batchExecutionKey,
    required this.info,
    required this.creationTime,
    required this.startingScheduleId,
    required this.releaseName,
    required this.type,
    required this.inputArguments,
    required this.environmentVariables,
    required this.outputArguments,
    required this.hostMachineName,
    required this.hasMediaRecorded,
    required this.hasVideoRecorded,
    required this.persistenceId,
    required this.resumeVersion,
    required this.stopStrategy,
    required this.customRuntimeType,
    required this.requiresUserInteraction,
    required this.releaseVersionId,
    required this.entryPointPath,
    required this.organizationUnitId,
    required this.organizationUnitFullyQualifiedName,
    required this.reference,
    required this.processType,
    required this.profilingOptions,
    required this.resumeOnSameContext,
    required this.localSystemAccount,
    required this.orchestratorUserIdentity,
    required this.remoteControlAccess,
    required this.startingTriggerId,
    required this.maxExpectedRunningTimeSeconds,
    required this.serverlessJobType,
    required this.parentJobKey,
    required this.resumeTime,
    required this.lastModificationTime,
    required this.errorCode,
    required this.fpsProperties,
    required this.traceId,
    required this.parentSpanId,
    required this.projectKey,
    required this.creatorUserKey,
    required this.parentOperationId,
    required this.enableAutopilotHealing,
    required this.fpsContext,
    required this.autoHealStatus,
    required this.id,
    required this.jobError,
    required this.autopilotForRobots,
  });

  final String? key;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? state;
  final String? jobPriority;
  final int? specificPriorityValue;
  final dynamic resourceOverwrites;
  final String? source;
  final String? sourceType;
  final String? batchExecutionKey;
  final String? info;
  final DateTime? creationTime;
  final dynamic startingScheduleId;
  final String? releaseName;
  final String? type;
  final dynamic inputArguments;
  final dynamic environmentVariables;
  final dynamic outputArguments;
  final String? hostMachineName;
  final bool? hasMediaRecorded;
  final bool? hasVideoRecorded;
  final dynamic persistenceId;
  final dynamic resumeVersion;
  final dynamic stopStrategy;
  final String? customRuntimeType;
  final bool? requiresUserInteraction;
  final int? releaseVersionId;
  final String? entryPointPath;
  final int? organizationUnitId;
  final String? organizationUnitFullyQualifiedName;
  final String? reference;
  final String? processType;
  final dynamic profilingOptions;
  final bool? resumeOnSameContext;
  final String? localSystemAccount;
  final dynamic orchestratorUserIdentity;
  final String? remoteControlAccess;
  final dynamic startingTriggerId;
  final dynamic maxExpectedRunningTimeSeconds;
  final dynamic serverlessJobType;
  final dynamic parentJobKey;
  final dynamic resumeTime;
  final DateTime? lastModificationTime;
  final dynamic errorCode;
  final dynamic fpsProperties;
  final dynamic traceId;
  final dynamic parentSpanId;
  final String? projectKey;
  final String? creatorUserKey;
  final dynamic parentOperationId;
  final bool? enableAutopilotHealing;
  final dynamic fpsContext;
  final dynamic autoHealStatus;
  final int? id;
  final dynamic jobError;
  final dynamic autopilotForRobots;

  factory JobsModel.fromJson(Map<String, dynamic> json) {
    return JobsModel(
      key: json["Key"],
      startTime: DateTime.tryParse(json["StartTime"] ?? ""),
      endTime: DateTime.tryParse(json["EndTime"] ?? ""),
      state: json["State"],
      jobPriority: json["JobPriority"],
      specificPriorityValue: json["SpecificPriorityValue"],
      resourceOverwrites: json["ResourceOverwrites"],
      source: json["Source"],
      sourceType: json["SourceType"],
      batchExecutionKey: json["BatchExecutionKey"],
      info: json["Info"],
      creationTime: DateTime.tryParse(json["CreationTime"] ?? ""),
      startingScheduleId: json["StartingScheduleId"],
      releaseName: json["ReleaseName"],
      type: json["Type"],
      inputArguments: json["InputArguments"],
      environmentVariables: json["EnvironmentVariables"],
      outputArguments: json["OutputArguments"],
      hostMachineName: json["HostMachineName"],
      hasMediaRecorded: json["HasMediaRecorded"],
      hasVideoRecorded: json["HasVideoRecorded"],
      persistenceId: json["PersistenceId"],
      resumeVersion: json["ResumeVersion"],
      stopStrategy: json["StopStrategy"],
      customRuntimeType: json["RuntimeType"],
      requiresUserInteraction: json["RequiresUserInteraction"],
      releaseVersionId: json["ReleaseVersionId"],
      entryPointPath: json["EntryPointPath"],
      organizationUnitId: json["OrganizationUnitId"],
      organizationUnitFullyQualifiedName:
          json["OrganizationUnitFullyQualifiedName"],
      reference: json["Reference"],
      processType: json["ProcessType"],
      profilingOptions: json["ProfilingOptions"],
      resumeOnSameContext: json["ResumeOnSameContext"],
      localSystemAccount: json["LocalSystemAccount"],
      orchestratorUserIdentity: json["OrchestratorUserIdentity"],
      remoteControlAccess: json["RemoteControlAccess"],
      startingTriggerId: json["StartingTriggerId"],
      maxExpectedRunningTimeSeconds: json["MaxExpectedRunningTimeSeconds"],
      serverlessJobType: json["ServerlessJobType"],
      parentJobKey: json["ParentJobKey"],
      resumeTime: json["ResumeTime"],
      lastModificationTime:
          DateTime.tryParse(json["LastModificationTime"] ?? ""),
      errorCode: json["ErrorCode"],
      fpsProperties: json["FpsProperties"],
      traceId: json["TraceId"],
      parentSpanId: json["ParentSpanId"],
      projectKey: json["ProjectKey"],
      creatorUserKey: json["CreatorUserKey"],
      parentOperationId: json["ParentOperationId"],
      enableAutopilotHealing: json["EnableAutopilotHealing"],
      fpsContext: json["FpsContext"],
      autoHealStatus: json["AutoHealStatus"],
      id: json["Id"],
      jobError: json["JobError"],
      autopilotForRobots: json["AutopilotForRobots"],
    );
  }
}
